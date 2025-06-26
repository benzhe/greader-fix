.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;->b:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "newText"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;->a:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    iget-boolean v0, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;->b:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 4
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 6
    :cond_2
    sget-object v0, Lon6;->a:Lew6;

    iget-object v0, v0, Lew6;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    .line 7
    :cond_3
    invoke-static {v0, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 8
    :cond_4
    sget-object v0, Lon6;->a:Lew6;

    iput-object p1, v0, Lew6;->c:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;->b:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v1, v0, v2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->L(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;ZZILjava/lang/Object;)V

    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$h;->b:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->d(Lwb;)V

    const/4 p1, 0x0

    return p1
.end method
