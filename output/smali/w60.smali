.class public final Lw60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:dynamite_load:fail:sample_rate"

    const-wide/16 v1, 0x2710

    .line 1
    invoke-static {v0, v1, v2}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, Lw60;->a:Le60;

    const-string v0, "gads:report_dynamite_crash_in_background_thread"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Lw60;->b:Le60;

    const-string v0, "gads:public_beta:traffic_multiplier"

    const-string v2, "1.0"

    .line 3
    invoke-static {v0, v2}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Lw60;->c:Le60;

    const-string v0, "gads:sdk_crash_report_class_prefix"

    const-string v2, "com.google."

    .line 4
    invoke-static {v0, v2}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Lw60;->d:Le60;

    const-string v0, "gads:sdk_crash_report_enabled"

    .line 5
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Lw60;->e:Le60;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    .line 6
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Lw60;->f:Le60;

    .line 7
    new-instance v0, Le60;

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "gads:trapped_exception_sample_rate"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Le60;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 8
    sput-object v0, Lw60;->g:Le60;

    return-void
.end method
