.class public final synthetic Lnt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lwb;

.field public final synthetic f:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lwb;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnt6;->e:Lwb;

    iput-object p2, p0, Lnt6;->f:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lnt6;->e:Lwb;

    iget-object v1, p0, Lnt6;->f:Landroid/content/DialogInterface$OnDismissListener;

    .line 1
    sget v2, Lcom/noinnion/android/greader/ui/setting/TextToSpeechPreferenceFragment;->l:I

    const v2, 0x7f090248

    .line 2
    invoke-virtual {v0, v2}, Lwb;->b(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lxb;

    .line 4
    new-instance v3, Lqb;

    invoke-direct {v3, v0}, Lqb;-><init>(Lxb;)V

    .line 5
    invoke-virtual {v3, v2}, Lqb;->q(Landroidx/fragment/app/Fragment;)Ldc;

    invoke-virtual {v3}, Lqb;->c()I

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method
