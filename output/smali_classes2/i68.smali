.class public final enum Li68;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li68;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Li68;

.field public static final enum f:Li68;

.field public static final enum g:Li68;

.field public static final synthetic h:[Li68;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Li68;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li68;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li68;->e:Li68;

    .line 2
    new-instance v1, Li68;

    const-string v3, "SMART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li68;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li68;->f:Li68;

    .line 3
    new-instance v3, Li68;

    const-string v5, "LENIENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li68;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li68;->g:Li68;

    const/4 v5, 0x3

    new-array v5, v5, [Li68;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Li68;->h:[Li68;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li68;
    .locals 1

    .line 1
    const-class v0, Li68;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li68;

    return-object p0
.end method

.method public static values()[Li68;
    .locals 1

    .line 1
    sget-object v0, Li68;->h:[Li68;

    invoke-virtual {v0}, [Li68;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li68;

    return-object v0
.end method
