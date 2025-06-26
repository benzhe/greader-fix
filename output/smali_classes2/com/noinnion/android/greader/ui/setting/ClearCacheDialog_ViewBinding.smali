.class public Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    .line 3
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900b0

    const-string v2, "field \'completeCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    .line 4
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900af

    const-string v2, "field \'articlesCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    .line 5
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900b2

    const-string v2, "field \'imagesCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    .line 6
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900b1

    const-string v2, "field \'duplicatesCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->duplicatesCheck:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->completeCheck:Landroid/widget/CheckBox;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->articlesCheck:Landroid/widget/CheckBox;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->imagesCheck:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/ClearCacheDialog;->duplicatesCheck:Landroid/widget/CheckBox;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
