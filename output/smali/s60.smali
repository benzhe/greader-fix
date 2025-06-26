.class public final Ls60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:adapter_initialization:red_button"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Ls60;->a:Le60;

    const-string v0, "gads:adaptive_banner:fail_invalid_ad_size"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Ls60;->b:Le60;

    const-string v0, "gads:sdk_use_dynamic_module"

    .line 3
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Ls60;->c:Le60;

    return-void
.end method
