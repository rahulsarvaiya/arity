class GroupTreeModel {
  int? parentAppMstId;
  String? parentIDNo;
  String? parentName;
  int? parentPaid;
  int? parentProductType;
  int? parentActivate;
  int? parentFirstChildAppMstId;
  String? parentFirstChildIDNo;
  String? parentFirstChildName;
  int? parentFirstChildPaid;
  int? parentFirstChildRedProductType;
  int? parentFirstChildActivate;
  int? parentSecondChildAppMstId;
  String? parentSecondChildIDNo;
  String? parentSecondChildName;
  int? parentSecondChildPaid;
  int? parentSecondChildRedProductType;
  int? parentSecondChildActivate;
  ParentSubChildListForFristChild? parentSubChildListForFristChild;
  ParentSubChildListForSecondChild? parentSubChildListForSecondChild;
  ParentSubChildListForSecondChild? nestedParentSubChildListForFristChild;
  NestedParentSubChildListForSecondChild?
  nestedParentSubChildListForSecondChild;
  ParentSubChildListForFristChild? nestedParentSubChildListForThirdChild;
  ParentSubChildListForSecondChild? nestedParentSubChildListForFourthChild;

  GroupTreeModel(
      {this.parentAppMstId,
        this.parentIDNo,
        this.parentName,
        this.parentPaid,
        this.parentProductType,
        this.parentActivate,
        this.parentFirstChildAppMstId,
        this.parentFirstChildIDNo,
        this.parentFirstChildName,
        this.parentFirstChildPaid,
        this.parentFirstChildRedProductType,
        this.parentFirstChildActivate,
        this.parentSecondChildAppMstId,
        this.parentSecondChildIDNo,
        this.parentSecondChildName,
        this.parentSecondChildPaid,
        this.parentSecondChildRedProductType,
        this.parentSecondChildActivate,
        this.parentSubChildListForFristChild,
        this.parentSubChildListForSecondChild,
        this.nestedParentSubChildListForFristChild,
        this.nestedParentSubChildListForSecondChild,
        this.nestedParentSubChildListForThirdChild,
        this.nestedParentSubChildListForFourthChild});

  GroupTreeModel.fromJson(Map<String, dynamic> json) {
    parentAppMstId = json['parentAppMstId'];
    parentIDNo = json['parentIDNo'];
    parentName = json['parentName'];
    parentPaid = json['parentPaid'];
    parentProductType = json['parentProductType'];
    parentActivate = json['parentActivate'];
    parentFirstChildAppMstId = json['parentFirstChildAppMstId'];
    parentFirstChildIDNo = json['parentFirstChildIDNo'];
    parentFirstChildName = json['parentFirstChildName'];
    parentFirstChildPaid = json['parentFirstChildPaid'];
    parentFirstChildRedProductType = json['parentFirstChildRedProductType'];
    parentFirstChildActivate = json['parentFirstChildActivate'];
    parentSecondChildAppMstId = json['parentSecondChildAppMstId'];
    parentSecondChildIDNo = json['parentSecondChildIDNo'];
    parentSecondChildName = json['parentSecondChildName'];
    parentSecondChildPaid = json['parentSecondChildPaid'];
    parentSecondChildRedProductType = json['parentSecondChildRedProductType'];
    parentSecondChildActivate = json['parentSecondChildActivate'];
    parentSubChildListForFristChild =
    json['parentSubChildListForFristChild'] != null
        ? ParentSubChildListForFristChild.fromJson(
        json['parentSubChildListForFristChild'])
        : null;
    parentSubChildListForSecondChild =
    json['parentSubChildListForSecondChild'] != null
        ? ParentSubChildListForSecondChild.fromJson(
        json['parentSubChildListForSecondChild'])
        : null;
    nestedParentSubChildListForFristChild =
    json['nestedParentSubChildListForFristChild'] != null
        ? ParentSubChildListForSecondChild.fromJson(
        json['nestedParentSubChildListForFristChild'])
        : null;
    nestedParentSubChildListForSecondChild =
    json['nestedParentSubChildListForSecondChild'] != null
        ? NestedParentSubChildListForSecondChild.fromJson(
        json['nestedParentSubChildListForSecondChild'])
        : null;
    nestedParentSubChildListForThirdChild =
    json['nestedParentSubChildListForThirdChild'] != null
        ? ParentSubChildListForFristChild.fromJson(
        json['nestedParentSubChildListForThirdChild'])
        : null;
    nestedParentSubChildListForFourthChild =
    json['nestedParentSubChildListForFourthChild'] != null
        ? ParentSubChildListForSecondChild.fromJson(
        json['nestedParentSubChildListForFourthChild'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['parentAppMstId'] = parentAppMstId;
    data['parentIDNo'] = parentIDNo;
    data['parentName'] = parentName;
    data['parentPaid'] = parentPaid;
    data['parentProductType'] = parentProductType;
    data['parentActivate'] = parentActivate;
    data['parentFirstChildAppMstId'] = parentFirstChildAppMstId;
    data['parentFirstChildIDNo'] = parentFirstChildIDNo;
    data['parentFirstChildName'] = parentFirstChildName;
    data['parentFirstChildPaid'] = parentFirstChildPaid;
    data['parentFirstChildRedProductType'] =
        parentFirstChildRedProductType;
    data['parentFirstChildActivate'] = parentFirstChildActivate;
    data['parentSecondChildAppMstId'] = parentSecondChildAppMstId;
    data['parentSecondChildIDNo'] = parentSecondChildIDNo;
    data['parentSecondChildName'] = parentSecondChildName;
    data['parentSecondChildPaid'] = parentSecondChildPaid;
    data['parentSecondChildRedProductType'] =
        parentSecondChildRedProductType;
    data['parentSecondChildActivate'] = parentSecondChildActivate;
    if (parentSubChildListForFristChild != null) {
      data['parentSubChildListForFristChild'] =
          parentSubChildListForFristChild!.toJson();
    }
    if (parentSubChildListForSecondChild != null) {
      data['parentSubChildListForSecondChild'] =
          parentSubChildListForSecondChild!.toJson();
    }
    if (nestedParentSubChildListForFristChild != null) {
      data['nestedParentSubChildListForFristChild'] =
          nestedParentSubChildListForFristChild!.toJson();
    }
    if (nestedParentSubChildListForSecondChild != null) {
      data['nestedParentSubChildListForSecondChild'] =
          nestedParentSubChildListForSecondChild!.toJson();
    }
    if (nestedParentSubChildListForThirdChild != null) {
      data['nestedParentSubChildListForThirdChild'] =
          nestedParentSubChildListForThirdChild!.toJson();
    }
    if (nestedParentSubChildListForFourthChild != null) {
      data['nestedParentSubChildListForFourthChild'] =
          nestedParentSubChildListForFourthChild!.toJson();
    }
    return data;
  }
}

class ParentSubChildListForFristChild {
  int? parentFirstChildAppMstId;
  String? parentFirstChildIDNo;
  String? parentFirstChildName;
  int? parentFirstChildPaid;
  int? parentFirstChildRedProductType;
  int? parentFirstChildActivate;
  int? parentSecondChildAppMstId;
  Null? parentSecondChildIDNo;
  Null? parentSecondChildName;
  int? parentSecondChildPaid;
  int? parentSecondChildRedProductType;
  int? parentSecondChildActivate;

  ParentSubChildListForFristChild(
      {this.parentFirstChildAppMstId,
        this.parentFirstChildIDNo,
        this.parentFirstChildName,
        this.parentFirstChildPaid,
        this.parentFirstChildRedProductType,
        this.parentFirstChildActivate,
        this.parentSecondChildAppMstId,
        this.parentSecondChildIDNo,
        this.parentSecondChildName,
        this.parentSecondChildPaid,
        this.parentSecondChildRedProductType,
        this.parentSecondChildActivate});

  ParentSubChildListForFristChild.fromJson(Map<String, dynamic> json) {
    parentFirstChildAppMstId = json['parentFirstChildAppMstId'];
    parentFirstChildIDNo = json['parentFirstChildIDNo'];
    parentFirstChildName = json['parentFirstChildName'];
    parentFirstChildPaid = json['parentFirstChildPaid'];
    parentFirstChildRedProductType = json['parentFirstChildRedProductType'];
    parentFirstChildActivate = json['parentFirstChildActivate'];
    parentSecondChildAppMstId = json['parentSecondChildAppMstId'];
    parentSecondChildIDNo = json['parentSecondChildIDNo'];
    parentSecondChildName = json['parentSecondChildName'];
    parentSecondChildPaid = json['parentSecondChildPaid'];
    parentSecondChildRedProductType = json['parentSecondChildRedProductType'];
    parentSecondChildActivate = json['parentSecondChildActivate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['parentFirstChildAppMstId'] = parentFirstChildAppMstId;
    data['parentFirstChildIDNo'] = parentFirstChildIDNo;
    data['parentFirstChildName'] = parentFirstChildName;
    data['parentFirstChildPaid'] = parentFirstChildPaid;
    data['parentFirstChildRedProductType'] =
        parentFirstChildRedProductType;
    data['parentFirstChildActivate'] = parentFirstChildActivate;
    data['parentSecondChildAppMstId'] = parentSecondChildAppMstId;
    data['parentSecondChildIDNo'] = parentSecondChildIDNo;
    data['parentSecondChildName'] = parentSecondChildName;
    data['parentSecondChildPaid'] = parentSecondChildPaid;
    data['parentSecondChildRedProductType'] =
        parentSecondChildRedProductType;
    data['parentSecondChildActivate'] = parentSecondChildActivate;
    return data;
  }
}

class ParentSubChildListForSecondChild {
  int? parentFirstChildAppMstId;
  String? parentFirstChildIDNo;
  String? parentFirstChildName;
  int? parentFirstChildPaid;
  int? parentFirstChildRedProductType;
  int? parentFirstChildActivate;
  int? parentSecondChildAppMstId;
  String? parentSecondChildIDNo;
  String? parentSecondChildName;
  int? parentSecondChildPaid;
  int? parentSecondChildRedProductType;
  int? parentSecondChildActivate;

  ParentSubChildListForSecondChild(
      {this.parentFirstChildAppMstId,
        this.parentFirstChildIDNo,
        this.parentFirstChildName,
        this.parentFirstChildPaid,
        this.parentFirstChildRedProductType,
        this.parentFirstChildActivate,
        this.parentSecondChildAppMstId,
        this.parentSecondChildIDNo,
        this.parentSecondChildName,
        this.parentSecondChildPaid,
        this.parentSecondChildRedProductType,
        this.parentSecondChildActivate});

  ParentSubChildListForSecondChild.fromJson(Map<String, dynamic> json) {
    parentFirstChildAppMstId = json['parentFirstChildAppMstId'];
    parentFirstChildIDNo = json['parentFirstChildIDNo'];
    parentFirstChildName = json['parentFirstChildName'];
    parentFirstChildPaid = json['parentFirstChildPaid'];
    parentFirstChildRedProductType = json['parentFirstChildRedProductType'];
    parentFirstChildActivate = json['parentFirstChildActivate'];
    parentSecondChildAppMstId = json['parentSecondChildAppMstId'];
    parentSecondChildIDNo = json['parentSecondChildIDNo'];
    parentSecondChildName = json['parentSecondChildName'];
    parentSecondChildPaid = json['parentSecondChildPaid'];
    parentSecondChildRedProductType = json['parentSecondChildRedProductType'];
    parentSecondChildActivate = json['parentSecondChildActivate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['parentFirstChildAppMstId'] = parentFirstChildAppMstId;
    data['parentFirstChildIDNo'] = parentFirstChildIDNo;
    data['parentFirstChildName'] = parentFirstChildName;
    data['parentFirstChildPaid'] = parentFirstChildPaid;
    data['parentFirstChildRedProductType'] =
        parentFirstChildRedProductType;
    data['parentFirstChildActivate'] = parentFirstChildActivate;
    data['parentSecondChildAppMstId'] = parentSecondChildAppMstId;
    data['parentSecondChildIDNo'] = parentSecondChildIDNo;
    data['parentSecondChildName'] = parentSecondChildName;
    data['parentSecondChildPaid'] = parentSecondChildPaid;
    data['parentSecondChildRedProductType'] =
        parentSecondChildRedProductType;
    data['parentSecondChildActivate'] = parentSecondChildActivate;
    return data;
  }
}

class NestedParentSubChildListForSecondChild {
  int? parentFirstChildAppMstId;
  Null? parentFirstChildIDNo;
  Null? parentFirstChildName;
  int? parentFirstChildPaid;
  int? parentFirstChildRedProductType;
  int? parentFirstChildActivate;
  int? parentSecondChildAppMstId;
  Null? parentSecondChildIDNo;
  Null? parentSecondChildName;
  int? parentSecondChildPaid;
  int? parentSecondChildRedProductType;
  int? parentSecondChildActivate;

  NestedParentSubChildListForSecondChild(
      {this.parentFirstChildAppMstId,
        this.parentFirstChildIDNo,
        this.parentFirstChildName,
        this.parentFirstChildPaid,
        this.parentFirstChildRedProductType,
        this.parentFirstChildActivate,
        this.parentSecondChildAppMstId,
        this.parentSecondChildIDNo,
        this.parentSecondChildName,
        this.parentSecondChildPaid,
        this.parentSecondChildRedProductType,
        this.parentSecondChildActivate});

  NestedParentSubChildListForSecondChild.fromJson(Map<String, dynamic> json) {
    parentFirstChildAppMstId = json['parentFirstChildAppMstId'];
    parentFirstChildIDNo = json['parentFirstChildIDNo'];
    parentFirstChildName = json['parentFirstChildName'];
    parentFirstChildPaid = json['parentFirstChildPaid'];
    parentFirstChildRedProductType = json['parentFirstChildRedProductType'];
    parentFirstChildActivate = json['parentFirstChildActivate'];
    parentSecondChildAppMstId = json['parentSecondChildAppMstId'];
    parentSecondChildIDNo = json['parentSecondChildIDNo'];
    parentSecondChildName = json['parentSecondChildName'];
    parentSecondChildPaid = json['parentSecondChildPaid'];
    parentSecondChildRedProductType = json['parentSecondChildRedProductType'];
    parentSecondChildActivate = json['parentSecondChildActivate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['parentFirstChildAppMstId'] = parentFirstChildAppMstId;
    data['parentFirstChildIDNo'] = parentFirstChildIDNo;
    data['parentFirstChildName'] = parentFirstChildName;
    data['parentFirstChildPaid'] = parentFirstChildPaid;
    data['parentFirstChildRedProductType'] =
        parentFirstChildRedProductType;
    data['parentFirstChildActivate'] = parentFirstChildActivate;
    data['parentSecondChildAppMstId'] = parentSecondChildAppMstId;
    data['parentSecondChildIDNo'] = parentSecondChildIDNo;
    data['parentSecondChildName'] = parentSecondChildName;
    data['parentSecondChildPaid'] = parentSecondChildPaid;
    data['parentSecondChildRedProductType'] =
        parentSecondChildRedProductType;
    data['parentSecondChildActivate'] = parentSecondChildActivate;
    return data;
  }
}
