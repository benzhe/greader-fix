.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miguelcatalan/materialsearchview/MaterialSearchView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lon6;->a:Lew6;

    iget-object v1, v1, Lew6;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->R()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$i;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 3
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
