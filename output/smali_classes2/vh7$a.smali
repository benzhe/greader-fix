.class public final Lvh7$a;
.super Lzb7$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lad7;

.field public final f:Lhc7;

.field public final g:Lad7;

.field public final h:Lvh7$c;

.field public volatile i:Z


# direct methods
.method public constructor <init>(Lvh7$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzb7$b;-><init>()V

    .line 2
    iput-object p1, p0, Lvh7$a;->h:Lvh7$c;

    .line 3
    new-instance p1, Lad7;

    invoke-direct {p1}, Lad7;-><init>()V

    iput-object p1, p0, Lvh7$a;->e:Lad7;

    .line 4
    new-instance v0, Lhc7;

    invoke-direct {v0}, Lhc7;-><init>()V

    iput-object v0, p0, Lvh7$a;->f:Lhc7;

    .line 5
    new-instance v1, Lad7;

    invoke-direct {v1}, Lad7;-><init>()V

    iput-object v1, p0, Lvh7$a;->g:Lad7;

    .line 6
    invoke-virtual {v1, p1}, Lad7;->b(Lic7;)Z

    .line 7
    invoke-virtual {v1, v0}, Lad7;->b(Lic7;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lic7;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lvh7$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lzc7;->e:Lzc7;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lvh7$a;->h:Lvh7$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lvh7$a;->e:Lad7;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lyh7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lxc7;)Lbi7;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lic7;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lvh7$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lzc7;->e:Lzc7;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lvh7$a;->h:Lvh7$c;

    iget-object v5, p0, Lvh7$a;->f:Lhc7;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lyh7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lxc7;)Lbi7;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvh7$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvh7$a;->i:Z

    .line 3
    iget-object v0, p0, Lvh7$a;->g:Lad7;

    invoke-virtual {v0}, Lad7;->k()V

    :cond_0
    return-void
.end method
