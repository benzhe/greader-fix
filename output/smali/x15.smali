.class public final Lx15;
.super Lww4;
.source "SourceFile"


# instance fields
.field public c:Landroid/os/Handler;

.field public final d:Lw15;

.field public final e:Lu15;

.field public final f:Ls15;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lww4;-><init>(Lrx4;)V

    new-instance p1, Lw15;

    .line 2
    invoke-direct {p1, p0}, Lw15;-><init>(Lx15;)V

    iput-object p1, p0, Lx15;->d:Lw15;

    new-instance p1, Lu15;

    .line 3
    invoke-direct {p1, p0}, Lu15;-><init>(Lx15;)V

    iput-object p1, p0, Lx15;->e:Lu15;

    new-instance p1, Ls15;

    .line 4
    invoke-direct {p1, p0}, Ls15;-><init>(Lx15;)V

    iput-object p1, p0, Lx15;->f:Ls15;

    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    iget-object v0, p0, Lx15;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcc4;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcc4;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lx15;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method
