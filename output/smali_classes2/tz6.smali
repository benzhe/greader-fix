.class public final enum Ltz6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltz6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ltz6;

.field public static final enum f:Ltz6;

.field public static final enum g:Ltz6;

.field public static final enum h:Ltz6;

.field public static final enum i:Ltz6;

.field public static final enum j:Ltz6;

.field public static final synthetic k:[Ltz6;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ltz6;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltz6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltz6;->e:Ltz6;

    .line 2
    new-instance v1, Ltz6;

    const-string v3, "NONE_SAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltz6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltz6;->f:Ltz6;

    .line 3
    new-instance v3, Ltz6;

    const-string v5, "IN_SAMPLE_POWER_OF_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltz6;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltz6;->g:Ltz6;

    .line 4
    new-instance v5, Ltz6;

    const-string v7, "IN_SAMPLE_INT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ltz6;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ltz6;->h:Ltz6;

    .line 5
    new-instance v7, Ltz6;

    const-string v9, "EXACTLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ltz6;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ltz6;->i:Ltz6;

    .line 6
    new-instance v9, Ltz6;

    const-string v11, "EXACTLY_STRETCHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ltz6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ltz6;->j:Ltz6;

    const/4 v11, 0x6

    new-array v11, v11, [Ltz6;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Ltz6;->k:[Ltz6;

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

.method public static valueOf(Ljava/lang/String;)Ltz6;
    .locals 1

    .line 1
    const-class v0, Ltz6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltz6;

    return-object p0
.end method

.method public static values()[Ltz6;
    .locals 1

    .line 1
    sget-object v0, Ltz6;->k:[Ltz6;

    invoke-virtual {v0}, [Ltz6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltz6;

    return-object v0
.end method
