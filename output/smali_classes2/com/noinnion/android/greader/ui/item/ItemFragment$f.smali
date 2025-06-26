.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$f;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showCaption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$f;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity ?: return"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lt75;

    invoke-direct {v1, v0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, v1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    const p1, 0x104000a

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v1, p1, p2}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    iget-object v0, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p2, v0, Landroidx/appcompat/app/AlertController$b;->n:Z

    .line 7
    invoke-virtual {p1}, Lt75;->a()La0;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final showImage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$f;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$f;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object v0

    .line 3
    sget v1, Lax6;->j:I

    .line 4
    :try_start_0
    new-instance v1, Lax6;

    invoke-direct {v1}, Lax6;-><init>()V

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "url"

    .line 6
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    check-cast v0, Lxb;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p1, Lqb;

    invoke-direct {p1, v0}, Lqb;-><init>(Lxb;)V

    const-string v0, "fragment_gif"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 11
    invoke-virtual {p1, v2, v1, v0, v3}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
