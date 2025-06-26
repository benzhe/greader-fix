.class public final enum Lm68;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm68;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lm68;

.field public static final enum f:Lm68;

.field public static final enum g:Lm68;

.field public static final enum h:Lm68;

.field public static final enum i:Lm68;

.field public static final enum j:Lm68;

.field public static final synthetic k:[Lm68;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lm68;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm68;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm68;->e:Lm68;

    .line 2
    new-instance v1, Lm68;

    const-string v3, "FULL_STANDALONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm68;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm68;->f:Lm68;

    .line 3
    new-instance v3, Lm68;

    const-string v5, "SHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm68;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm68;->g:Lm68;

    .line 4
    new-instance v5, Lm68;

    const-string v7, "SHORT_STANDALONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm68;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm68;->h:Lm68;

    .line 5
    new-instance v7, Lm68;

    const-string v9, "NARROW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lm68;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lm68;->i:Lm68;

    .line 6
    new-instance v9, Lm68;

    const-string v11, "NARROW_STANDALONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lm68;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lm68;->j:Lm68;

    const/4 v11, 0x6

    new-array v11, v11, [Lm68;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lm68;->k:[Lm68;

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

.method public static valueOf(Ljava/lang/String;)Lm68;
    .locals 1

    .line 1
    const-class v0, Lm68;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm68;

    return-object p0
.end method

.method public static values()[Lm68;
    .locals 1

    .line 1
    sget-object v0, Lm68;->k:[Lm68;

    invoke-virtual {v0}, [Lm68;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm68;

    return-object v0
.end method
