.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C()V

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object p1

    const v0, 0x7f090248

    invoke-virtual {p1, v0}, Lwb;->b(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v0

    check-cast v0, Lxb;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lqb;

    invoke-direct {v1, v0}, Lqb;-><init>(Lxb;)V

    .line 7
    invoke-virtual {v1, p1}, Lqb;->q(Landroidx/fragment/app/Fragment;)Ldc;

    invoke-virtual {v1}, Ldc;->c()I

    :cond_0
    return-void
.end method
