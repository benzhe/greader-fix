.class public final Lk60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le60;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "gads:csi_reporting_ratio"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Le60;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 2
    sput-object v0, Lk60;->a:Le60;

    const-string v0, "gads:sdk_csi_server"

    const-string v1, "https://csi.gstatic.com/csi"

    .line 3
    invoke-static {v0, v1}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Lk60;->b:Le60;

    const-string v0, "gads:enabled_sdk_csi"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Lk60;->c:Le60;

    return-void
.end method
