.class public final Lt37;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lv27$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv27$c<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv27$c;

    const-string v1, "remote-addr"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 2
    sput-object v0, Lt37;->a:Lv27$c;

    .line 3
    new-instance v0, Lv27$c;

    const-string v1, "local-addr"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v0, Lt37;->b:Lv27$c;

    .line 5
    new-instance v0, Lv27$c;

    const-string v1, "ssl-session"

    invoke-direct {v0, v1}, Lv27$c;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lt37;->c:Lv27$c;

    return-void
.end method
