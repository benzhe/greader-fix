.class public Lmd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd$a;
    }
.end annotation


# instance fields
.field public final a:Led;

.field public final b:Landroid/os/Handler;

.field public c:Lmd$a;


# direct methods
.method public constructor <init>(Ldd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Led;

    invoke-direct {v0, p1}, Led;-><init>(Ldd;)V

    iput-object v0, p0, Lmd;->a:Led;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmd;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lad$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmd;->c:Lmd$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmd$a;->run()V

    .line 3
    :cond_0
    new-instance v0, Lmd$a;

    iget-object v1, p0, Lmd;->a:Led;

    invoke-direct {v0, v1, p1}, Lmd$a;-><init>(Led;Lad$a;)V

    iput-object v0, p0, Lmd;->c:Lmd$a;

    .line 4
    iget-object p1, p0, Lmd;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
