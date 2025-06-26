.class public final Lgf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ldf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf0<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lbf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf0<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lgf0;->a:Ljava/nio/charset/Charset;

    .line 2
    new-instance v0, Lif0;

    invoke-direct {v0}, Lif0;-><init>()V

    sput-object v0, Lgf0;->b:Ldf0;

    .line 3
    sget-object v0, Lff0;->a:Lbf0;

    sput-object v0, Lgf0;->c:Lbf0;

    return-void
.end method
