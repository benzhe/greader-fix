.class public final enum Li17;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li17;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Li17;

.field public static final enum g:Li17;

.field public static final enum h:Li17;

.field public static final enum i:Li17;

.field public static final synthetic j:[Li17;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Li17;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Li17;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Li17;->f:Li17;

    .line 2
    new-instance v1, Li17;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Li17;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Li17;->g:Li17;

    .line 3
    new-instance v3, Li17;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Li17;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Li17;->h:Li17;

    .line 4
    new-instance v5, Li17;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Li17;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Li17;->i:Li17;

    const/4 v7, 0x4

    new-array v7, v7, [Li17;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Li17;->j:[Li17;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Li17;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li17;
    .locals 1

    .line 1
    const-class v0, Li17;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li17;

    return-object p0
.end method

.method public static values()[Li17;
    .locals 1

    .line 1
    sget-object v0, Li17;->j:[Li17;

    invoke-virtual {v0}, [Li17;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li17;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li17;->e:Ljava/lang/String;

    return-object v0
.end method
