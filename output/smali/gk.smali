.class public Lgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyj;


# instance fields
.field public final c:Lid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid<",
            "Lyj$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lwm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwm<",
            "Lyj$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lid;

    invoke-direct {v0}, Lid;-><init>()V

    iput-object v0, p0, Lgk;->c:Lid;

    .line 3
    new-instance v0, Lwm;

    invoke-direct {v0}, Lwm;-><init>()V

    .line 4
    iput-object v0, p0, Lgk;->d:Lwm;

    .line 5
    sget-object v0, Lyj;->b:Lyj$b$b;

    invoke-virtual {p0, v0}, Lgk;->a(Lyj$b;)V

    return-void
.end method


# virtual methods
.method public a(Lyj$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgk;->c:Lid;

    invoke-virtual {v0, p1}, Lid;->i(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lyj$b$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lgk;->d:Lwm;

    check-cast p1, Lyj$b$c;

    invoke-virtual {v0, p1}, Lwm;->j(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lyj$b$a;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lyj$b$a;

    .line 6
    iget-object v0, p0, Lgk;->d:Lwm;

    .line 7
    iget-object p1, p1, Lyj$b$a;->a:Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v0, p1}, Lwm;->k(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
