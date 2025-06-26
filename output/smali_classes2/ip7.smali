.class public final Lip7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyq7;

.field public static final b:Lyq7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyq7;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lyq7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lip7;->a:Lyq7;

    .line 2
    new-instance v0, Lyq7;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lyq7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lip7;->b:Lyq7;

    return-void
.end method
