.class public final Lqf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyd0;

.field public b:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lwe0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyd0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqf0;->a:Lyd0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqf0;->b:Law2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 3
    iput-object v0, p0, Lqf0;->b:Law2;

    .line 4
    iget-object v1, p0, Lqf0;->a:Lyd0;

    .line 5
    invoke-virtual {v1}, Lyd0;->b()Loe0;

    move-result-object v1

    .line 6
    new-instance v2, Lpf0;

    invoke-direct {v2, v0}, Lpf0;-><init>(Lxs0;)V

    new-instance v3, Lsf0;

    invoke-direct {v3, v0}, Lsf0;-><init>(Lxs0;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Lat0;->c(Lbt0;Lzs0;)V

    :cond_0
    return-void
.end method
