.class public final enum Lak;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lak;

.field public static final enum f:Lak;

.field public static final enum g:Lak;

.field public static final enum h:Lak;

.field public static final enum i:Lak;

.field public static final enum j:Lak;

.field public static final synthetic k:[Lak;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lak;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lak;->e:Lak;

    .line 2
    new-instance v1, Lak;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lak;->f:Lak;

    .line 3
    new-instance v3, Lak;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lak;->g:Lak;

    .line 4
    new-instance v5, Lak;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lak;->h:Lak;

    .line 5
    new-instance v7, Lak;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lak;->i:Lak;

    .line 6
    new-instance v9, Lak;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lak;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lak;->j:Lak;

    const/4 v11, 0x6

    new-array v11, v11, [Lak;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lak;->k:[Lak;

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

.method public static valueOf(Ljava/lang/String;)Lak;
    .locals 1

    .line 1
    const-class v0, Lak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lak;

    return-object p0
.end method

.method public static values()[Lak;
    .locals 1

    .line 1
    sget-object v0, Lak;->k:[Lak;

    invoke-virtual {v0}, [Lak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lak;

    return-object v0
.end method


# virtual methods
.method public i()Z
    .locals 1

    .line 1
    sget-object v0, Lak;->g:Lak;

    if-eq p0, v0, :cond_1

    sget-object v0, Lak;->h:Lak;

    if-eq p0, v0, :cond_1

    sget-object v0, Lak;->j:Lak;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
