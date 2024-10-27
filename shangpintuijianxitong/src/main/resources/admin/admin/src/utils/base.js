const base = {
    get() {
        return {
            url : "http://localhost:8080/shangpintuijianxitong/",
            name: "shangpintuijianxitong",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/shangpintuijianxitong/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "协同过滤算法商品推荐系统"
        } 
    }
}
export default base
