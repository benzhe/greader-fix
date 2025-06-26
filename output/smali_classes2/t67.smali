.class public final Lt67;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field public static final b:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljava/util/List<",
            "Lq37;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Lu47;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Lv27;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv27$c;

    const-string v1, "service-config"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lt67;->a:Lv27$c;

    .line 3
    new-instance v0, Lv27$c;

    const-string v1, "io.grpc.grpclb.lbAddrs"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v0, Lt67;->b:Lv27$c;

    .line 5
    new-instance v0, Lv27$c;

    const-string v1, "io.grpc.grpclb.lbAddrAuthority"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lt67;->c:Lv27$c;

    .line 7
    new-instance v0, Lv27$c;

    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lt67;->d:Lv27$c;

    .line 9
    new-instance v0, Lv27$c;

    const-string v1, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 10
    sput-object v0, Lt67;->e:Lv27$c;

    return-void
.end method
