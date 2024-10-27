<template>
    <div>
        <div class="container">
            <div class="login-form">
                <h1 class="h1" style="color:#000;fontSize:28px;">协同过滤算法商品推荐系统注册</h1>
                <el-form class="rgs-form">
                    <el-form-item label="账号" class="input">
                        <el-input v-model="ruleForm.username" autocomplete="off" placeholder="账号"  />
                    </el-form-item>
                    <el-form-item label="密码" class="input">
                        <el-input type="password" v-model="ruleForm.password" autocomplete="off" show-password/>
                    </el-form-item>
                    <el-form-item label="重复密码" class="input">
                        <el-input type="passwo   rd" v-model="ruleForm.repetitionPassword" autocomplete="off" show-password/>
                    </el-form-item>
                        <el-form-item label="商家名称" class="input" v-if="tableName=='shangjia'">
                            <el-input v-model="ruleForm.shangjiaName" autocomplete="off" placeholder="商家名称"  />
                        </el-form-item>
                        <el-form-item label="联系方式" class="input" v-if="tableName=='shangjia'">
                            <el-input v-model="ruleForm.shangjiaPhone" autocomplete="off" placeholder="联系方式"  />
                        </el-form-item>
                        <el-form-item label="邮箱" class="input" v-if="tableName=='shangjia'">
                            <el-input v-model="ruleForm.shangjiaEmail" autocomplete="off" placeholder="邮箱"  />
                        </el-form-item>
                        <!--
                            <el-form-item v-if="shangjiaPhotoFlag">
                            </el-form-item>
                            <el-form-item label="营业执照展示" class="input" v-if="tableName=='shangjia'">
                                    <file-upload
                                        tip="点击上传营业执照展示"
                                        action="file/upload"
                                        :limit="1"
                                        :multiple="true"
                                        :fileUrls="ruleForm.shangjiaPhoto?$base.url+ruleForm.shangjiaPhoto:''"
                                        @change="shangjiaPhotoUploadChange"
                                    ></file-upload>
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="商家类型" class="input" v-if="tableName=='shangjia'">
                                <el-input v-model="ruleForm.shangjiaTypes" autocomplete="off" placeholder="商家类型"  />
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="现有余额" class="input" v-if="tableName=='shangjia'">
                                <el-input v-model="ruleForm.newMoney" autocomplete="off" placeholder="现有余额"  />
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="商家介绍" class="input" v-if="tableName=='shangjia'">
                                <el-input type="textarea" v-model="ruleForm.shangjiaContent" placeholder="商家介绍"></el-input>
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="逻辑删除" class="input" v-if="tableName=='shangjia'">
                                <el-input v-model="ruleForm.shangjiaDelete" autocomplete="off" placeholder="逻辑删除"  />
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="创建时间 show1 show2 photoShow" class="input" v-if="tableName=='shangjia'">
                                <el-input v-model="ruleForm.createTime" autocomplete="off" placeholder="创建时间 show1 show2 photoShow"  />
                           </el-form-item>
                        -->
                        <el-form-item label="用户姓名" class="input" v-if="tableName=='yonghu'">
                            <el-input v-model="ruleForm.yonghuName" autocomplete="off" placeholder="用户姓名"  />
                        </el-form-item>
                        <el-form-item label="联系方式" class="input" v-if="tableName=='yonghu'">
                            <el-input v-model="ruleForm.yonghuPhone" autocomplete="off" placeholder="联系方式"  />
                        </el-form-item>
                        <el-form-item label="身份证号" class="input" v-if="tableName=='yonghu'">
                            <el-input v-model="ruleForm.yonghuIdNumber" autocomplete="off" placeholder="身份证号"  />
                        </el-form-item>
                        <!--
                            <el-form-item v-if="yonghuPhotoFlag">
                            </el-form-item>
                            <el-form-item label="用户头像" class="input" v-if="tableName=='yonghu'">
                                    <file-upload
                                        tip="点击上传用户头像"
                                        action="file/upload"
                                        :limit="1"
                                        :multiple="true"
                                        :fileUrls="ruleForm.yonghuPhoto?$base.url+ruleForm.yonghuPhoto:''"
                                        @change="yonghuPhotoUploadChange"
                                    ></file-upload>
                           </el-form-item>
                        -->
                        <el-form-item label="电子邮箱" class="input" v-if="tableName=='yonghu'">
                            <el-input v-model="ruleForm.yonghuEmail" autocomplete="off" placeholder="电子邮箱"  />
                        </el-form-item>
                        <!--
                            <el-form-item label="余额" class="input" v-if="tableName=='yonghu'">
                                <el-input v-model="ruleForm.newMoney" autocomplete="off" placeholder="余额"  />
                           </el-form-item>
                        -->
                        <!--
                            <el-form-item label="创建时间" class="input" v-if="tableName=='yonghu'">
                                <el-input v-model="ruleForm.createTime" autocomplete="off" placeholder="创建时间"  />
                           </el-form-item>
                        -->
                    <div style="display: flex;flex-wrap: wrap;width: 100%;justify-content: center;">
                        <el-button class="btn" type="primary" @click="login()">注册</el-button>
                        <el-button class="btn close" type="primary" @click="close()">取消</el-button>
                    </div>
                </el-form>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                ruleForm: {
                },
                tableName:"",
                rules: {},
                sexTypesOptions : [],
                shangjiaPhotoFlag:false,//用于刷新文件上传
                yonghuPhotoFlag:false,//用于刷新文件上传
            };
        },
        mounted(){
            let table = this.$storage.get("loginTable");
            this.tableName = table;

            //级联表的下拉框查询

        },
        methods: {
            // 获取uuid
            getUUID () {
                return new Date().getTime();
            },
            shangjiaPhotoUploadChange(fileUrls) {
               this.ruleForm.shangjiaPhoto = fileUrls;
                if(this.shangjiaPhotoFlag){
                    this.shangjiaPhotoFlag=false;
                }else{
                    this.shangjiaPhotoFlag=true;
                }
            },
            yonghuPhotoUploadChange(fileUrls) {
               this.ruleForm.yonghuPhoto = fileUrls;
                if(this.yonghuPhotoFlag){
                    this.yonghuPhotoFlag=false;
                }else{
                    this.yonghuPhotoFlag=true;
                }
            },
            close(){
                this.$router.push({ path: "/login" });
            },
            // 注册
            login() {

                            if((!this.ruleForm.username)){
                                this.$message.error('账号不能为空');
                                return
                            }
                            if((!this.ruleForm.password)){
                                this.$message.error('密码不能为空');
                                return
                            }
                            if((!this.ruleForm.repetitionPassword)){
                                this.$message.error('重复密码不能为空');
                                return
                            }
                            if(this.ruleForm.repetitionPassword != this.ruleForm.password){
                                this.$message.error('密码和重复密码不一致');
                                return
                            }
                            if((!this.ruleForm.shangjiaName)&& 'shangjia'==this.tableName){
                                this.$message.error('商家名称不能为空');
                                return
                            }
                             if('shangjia' == this.tableName && this.ruleForm.shangjiaPhone&&(!this.$validate.isMobile(this.ruleForm.shangjiaPhone))){
                                 this.$message.error('手机应输入手机格式');
                                 return
                             }
                            if('shangjia' == this.tableName && this.ruleForm.shangjiaEmail&&(!this.$validate.isEmail(this.ruleForm.shangjiaEmail))){
                                this.$message.error("邮箱应输入邮件格式");
                                return
                            }
                            // shangjia 中的 营业执照展示 判空处理
                            // if('shangjia' == this.tableName && (this.ruleForm.shangjiaPhoto== null ||this.ruleForm.shangjiaPhoto== "")){
                            //     this.$message.error("营业执照展示不能为空");
                            //     return
                            // }
                            // shangjia 中的 商家类型 判空处理
                            // if('shangjia' == this.tableName && (this.ruleForm.shangjiaTypes== null ||this.ruleForm.shangjiaTypes== "")){
                            //     this.$message.error("商家类型不能为空");
                            //     return
                            // }
                            // shangjia 中的 现有余额 判空处理
                            // if('shangjia' == this.tableName && (this.ruleForm.newMoney== null ||this.ruleForm.newMoney== "")){
                            //     this.$message.error("现有余额不能为空");
                            //     return
                            // }
                            // shangjia 中的 商家介绍 判空处理
                            // if('shangjia' == this.tableName && (this.ruleForm.shangjiaContent== null ||this.ruleForm.shangjiaContent== "")){
                            //     this.$message.error("商家介绍不能为空");
                            //     return
                            // }
                            // shangjia 中的 逻辑删除 判空处理
                            // if('shangjia' == this.tableName && (this.ruleForm.shangjiaDelete== null ||this.ruleForm.shangjiaDelete== "")){
                            //     this.$message.error("逻辑删除不能为空");
                            //     return
                            // }
                            // shangjia 中的 创建时间 show1 show2 photoShow 判空处理
                            // if('shangjia' == this.tableName && (this.ruleForm.createTime== null ||this.ruleForm.createTime== "")){
                            //     this.$message.error("创建时间 show1 show2 photoShow不能为空");
                            //     return
                            // }
                            if((!this.ruleForm.yonghuName)&& 'yonghu'==this.tableName){
                                this.$message.error('用户姓名不能为空');
                                return
                            }
                             if('yonghu' == this.tableName && this.ruleForm.yonghuPhone&&(!this.$validate.isMobile(this.ruleForm.yonghuPhone))){
                                 this.$message.error('手机应输入手机格式');
                                 return
                             }
                            if((!this.ruleForm.yonghuIdNumber)&& 'yonghu'==this.tableName){
                                this.$message.error('身份证号不能为空');
                                return
                            }
                            // yonghu 中的 用户头像 判空处理
                            // if('yonghu' == this.tableName && (this.ruleForm.yonghuPhoto== null ||this.ruleForm.yonghuPhoto== "")){
                            //     this.$message.error("用户头像不能为空");
                            //     return
                            // }
                            if('yonghu' == this.tableName && this.ruleForm.yonghuEmail&&(!this.$validate.isEmail(this.ruleForm.yonghuEmail))){
                                this.$message.error("邮箱应输入邮件格式");
                                return
                            }
                            // yonghu 中的 余额 判空处理
                            // if('yonghu' == this.tableName && (this.ruleForm.newMoney== null ||this.ruleForm.newMoney== "")){
                            //     this.$message.error("余额不能为空");
                            //     return
                            // }
                            // yonghu 中的 创建时间 判空处理
                            // if('yonghu' == this.tableName && (this.ruleForm.createTime== null ||this.ruleForm.createTime== "")){
                            //     this.$message.error("创建时间不能为空");
                            //     return
                            // }
                this.$http({
                    url: `${this.tableName}/register`,
                    method: "post",
                    data:this.ruleForm
                }).then(({ data }) => {
                    if (data && data.code === 0) {
                    this.$message({
                        message: "注册成功,请登录后在个人中心页面补充个人数据",
                        type: "success",
                        duration: 1500,
                        onClose: () => {
                        this.$router.replace({ path: "/login" });
                }
                });
                } else {
                    this.$message.error(data.msg);
                }
            });
            }
        }
    };
</script>
<style lang="scss" scoped>
.el-radio__input.is-checked .el-radio__inner {
    border-color: #00c292;
    background: #00c292;
}

.el-radio__input.is-checked .el-radio__inner {
    border-color: #00c292;
    background: #00c292;
}

.el-radio__input.is-checked+.el-radio__label {
    color: #00c292;
}

.el-radio__input.is-checked+.el-radio__label {
    color: #00c292;
}

.el-radio__input.is-checked+.el-radio__label {
    color: #00c292;
}

.h1 {
    margin-top: 10px;
}

body {
    padding: 0;
    margin: 0;
}


.nk-navigation {
    margin-top: 15px;

a {
    display: inline-block;
    color: #fff;
    background: rgba(255, 255, 255, .2);
    width: 100px;
    height: 50px;
    border-radius: 30px;
    text-align: center;
    display: flex;
    align-items: center;
    margin: 0 auto;
    justify-content: center;
    padding: 0 20px;
}

.icon {
    margin-left: 10px;
    width: 30px;
    height: 30px;
}
}

.register-container {
    margin-top: 10px;

a {
    display: inline-block;
    color: #fff;
    max-width: 500px;
    height: 50px;
    border-radius: 30px;
    text-align: center;
    display: flex;
    align-items: center;
    margin: 0 auto;
    justify-content: center;
    padding: 0 20px;

div {
    margin-left: 10px;
}
}
}

.container {
    height: 100vh;
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
        background-image: url(/shangpintuijianxitong/img/back-img-bg.jpg);

.login-form {
    right: 50%;
    top: 50%;
    height: auto;
    transform: translate3d(50%, -50%, 0);
    border-radius: 10px;
    background-color: rgba(255,255,255,.5);
    width: 420px;
    padding: 30px 30px 40px 30px;
    font-size: 14px;
    font-weight: 500;

.h1 {
    margin: 0;
    text-align: center;
    line-height: 54px;
    font-size: 24px;
    color: #000;
}

.rgs-form {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

.input {
    width: 95%;

& /deep/ .el-form-item__label {
      line-height: 40px;
      color: rgba(17, 16, 16, 1);
      font-size: #606266;
  }

& /deep/ .el-input__inner {
      height: 40px;
      color: rgba(23, 24, 26, 1);
      font-size: 14px;
      border-width: 1px;
      border-style: solid;
      border-color: #606266;
      border-radius: 22px;
      background-color: #fff;
  }
}

.btn {
    margin: 0 10px;
    width: 88px;
    height: 44px;
    color: #fff;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #409EFF;
    border-radius: 22px;
    background-color: #409EFF;
}

.close {
    margin: 0 10px;
    width: 88px;
    height: 44px;
    color: #409EFF;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #409EFF;
    border-radius: 22px;
    background-color: #FFF;
}

}
}
}
</style>




