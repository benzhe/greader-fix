.class public final enum Lg50;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg50;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lg50;

.field public static final enum f:Lg50;

.field public static final enum g:Lg50;

.field public static final enum h:Lg50;

.field public static final synthetic i:[Lg50;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lg50;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg50;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg50;->e:Lg50;

    .line 2
    new-instance v1, Lg50;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg50;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg50;->f:Lg50;

    .line 3
    new-instance v3, Lg50;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg50;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg50;->g:Lg50;

    .line 4
    new-instance v5, Lg50;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg50;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg50;->h:Lg50;

    const/4 v7, 0x4

    new-array v7, v7, [Lg50;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lg50;->i:[Lg50;

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

.method public static values()[Lg50;
    .locals 1

    .line 1
    sget-object v0, Lg50;->i:[Lg50;

    invoke-virtual {v0}, [Lg50;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg50;

    return-object v0
.end method
