.class public final Li60;
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
            "Ljava/lang/String;",
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:afs:csa_send_tcf_data"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Le60;->c(Ljava/lang/String;Z)Le60;

    move-result-object v0

    sput-object v0, Li60;->a:Le60;

    const-string v0, "gads:afs:csa_tcf_data_to_collect"

    const-string v1, "[{\"bk\":\"tcString\",\"sk\":\"IABTCF_TCString\",\"type\":0},{\"bk\":\"gdprApplies\",\"sk\":\"IABTCF_gdprApplies\",\"type\":1},{\"bk\":\"usPrivacy\",\"sk\":\"IABUSPrivacy_String\",\"type\":0}]"

    .line 2
    invoke-static {v0, v1}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Li60;->b:Le60;

    const-string v0, "gads:afs:csa_webview_custom_domain_param_key"

    const-string v1, "csa_customDomain"

    .line 3
    invoke-static {v0, v1}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Li60;->c:Le60;

    const-string v0, "gads:afs:csa_webview_static_file_path"

    const-string v1, "/afs/ads/i/webview.html"

    .line 4
    invoke-static {v0, v1}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Li60;->d:Le60;

    return-void
.end method
