.class public final enum Lh68;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh68;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lh68;

.field public static final enum f:Lh68;

.field public static final enum g:Lh68;

.field public static final enum h:Lh68;

.field public static final synthetic i:[Lh68;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lh68;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh68;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh68;->e:Lh68;

    .line 2
    new-instance v1, Lh68;

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh68;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh68;->f:Lh68;

    .line 3
    new-instance v3, Lh68;

    const-string v5, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lh68;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh68;->g:Lh68;

    .line 4
    new-instance v5, Lh68;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lh68;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lh68;->h:Lh68;

    const/4 v7, 0x4

    new-array v7, v7, [Lh68;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lh68;->i:[Lh68;

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

.method public static valueOf(Ljava/lang/String;)Lh68;
    .locals 1

    .line 1
    const-class v0, Lh68;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh68;

    return-object p0
.end method

.method public static values()[Lh68;
    .locals 1

    .line 1
    sget-object v0, Lh68;->i:[Lh68;

    invoke-virtual {v0}, [Lh68;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh68;

    return-object v0
.end method
