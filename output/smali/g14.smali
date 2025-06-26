.class public final enum Lg14;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lvx3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg14;",
        ">;",
        "Lvx3;"
    }
.end annotation


# static fields
.field public static final enum f:Lg14;

.field public static final enum g:Lg14;

.field public static final enum h:Lg14;

.field public static final enum i:Lg14;

.field public static final enum j:Lg14;

.field public static final synthetic k:[Lg14;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg14;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg14;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg14;->f:Lg14;

    new-instance v1, Lg14;

    const-string v3, "UNMETERED_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg14;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg14;->g:Lg14;

    new-instance v3, Lg14;

    const-string v5, "UNMETERED_OR_DAILY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg14;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg14;->h:Lg14;

    new-instance v5, Lg14;

    const-string v7, "FAST_IF_RADIO_AWAKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg14;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg14;->i:Lg14;

    new-instance v7, Lg14;

    const-string v9, "NEVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg14;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg14;->j:Lg14;

    const/4 v9, 0x5

    new-array v9, v9, [Lg14;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lg14;->k:[Lg14;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg14;->e:I

    return-void
.end method

.method public static values()[Lg14;
    .locals 1

    sget-object v0, Lg14;->k:[Lg14;

    invoke-virtual {v0}, [Lg14;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg14;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lg14;->e:I

    return v0
.end method
