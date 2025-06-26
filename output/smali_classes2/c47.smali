.class public abstract Lc47;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc47$c;,
        Lc47$j;,
        Lc47$h;,
        Lc47$d;,
        Lc47$b;,
        Lc47$e;,
        Lc47$f;,
        Lc47$i;,
        Lc47$g;
    }
.end annotation


# static fields
.field public static final a:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv27$c;

    const-string v1, "io.grpc.LoadBalancer.loadBalancingConfig"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lc47;->a:Lv27$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lx47;)V
.end method

.method public abstract b(Lc47$g;)V
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public abstract d()V
.end method
