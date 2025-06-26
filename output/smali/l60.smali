.class public final Ll60;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, Ll60;->a:Le60;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    .line 2
    invoke-static {v0, v3}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Ll60;->b:Le60;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    .line 3
    invoke-static {v0, v3, v4}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, Ll60;->c:Le60;

    const-string v0, "gads:content_length_weight"

    .line 4
    invoke-static {v0, v1, v2}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, Ll60;->d:Le60;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    .line 5
    invoke-static {v0, v1, v2}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, Ll60;->e:Le60;

    const-string v0, "gads:sleep_sec"

    .line 6
    invoke-static {v0, v3, v4}, Le60;->b(Ljava/lang/String;J)Le60;

    move-result-object v0

    sput-object v0, Ll60;->f:Le60;

    return-void
.end method
