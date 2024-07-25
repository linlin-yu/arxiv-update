let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["GNN", "ENN"];
let titles_method = ["Pre-train", "Pretrain", "Prompt", "Self-Supervised"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Stephan Günnemann", "Jie Ren", "Balaji Lakshminarayanan"];

let conferences = [
    // AI
    "AAAI", "IJCAI", 
    // CV
    "CVPR",
    // DM
    //"AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ICLR", "ICML", "NeurIPS", "NIPS", "UAI",
    // NLP
     "ACL", "EMNLP", "NAACL",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
