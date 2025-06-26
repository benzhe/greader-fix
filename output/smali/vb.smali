.class public abstract Lvb;
.super Lsb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lsb;"
    }
.end annotation


# instance fields
.field public final e:Landroid/app/Activity;

.field public final f:Landroid/content/Context;

.field public final g:Landroid/os/Handler;

.field public final h:I

.field public final i:Lxb;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Lsb;-><init>()V

    .line 3
    new-instance v1, Lxb;

    invoke-direct {v1}, Lxb;-><init>()V

    iput-object v1, p0, Lvb;->i:Lxb;

    .line 4
    iput-object p1, p0, Lvb;->e:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Ld0$h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lvb;->f:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 6
    invoke-static {v0, p1}, Ld0$h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lvb;->g:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lvb;->h:I

    return-void
.end method


# virtual methods
.method public abstract d(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract g()Landroid/view/LayoutInflater;
.end method

.method public abstract h()I
.end method

.method public abstract i()Z
.end method

.method public abstract j(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
.end method

.method public abstract k(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract l(Ljava/lang/String;)Z
.end method

.method public abstract m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method public abstract n(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract o()V
.end method
