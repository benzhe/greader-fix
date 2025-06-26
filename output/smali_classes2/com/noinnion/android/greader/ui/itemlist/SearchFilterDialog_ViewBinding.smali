.class public Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090190

    const-string v2, "field \'mLocationName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLocationName:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09018f

    const-string v2, "field \'mLocationIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLocationIcon:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090174

    const-string v2, "field \'mLabelText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLabelText:Landroid/widget/EditText;

    .line 6
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09025a

    const-string v2, "field \'mQueryText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mQueryText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLocationName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLocationIcon:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLabelText:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mQueryText:Landroid/widget/EditText;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
