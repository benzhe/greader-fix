.class public final enum Lj68;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj68;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lj68;

.field public static final enum f:Lj68;

.field public static final enum g:Lj68;

.field public static final enum h:Lj68;

.field public static final enum i:Lj68;

.field public static final synthetic j:[Lj68;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lj68;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj68;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj68;->e:Lj68;

    .line 2
    new-instance v1, Lj68;

    const-string v3, "ALWAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj68;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj68;->f:Lj68;

    .line 3
    new-instance v3, Lj68;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj68;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj68;->g:Lj68;

    .line 4
    new-instance v5, Lj68;

    const-string v7, "NOT_NEGATIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj68;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj68;->h:Lj68;

    .line 5
    new-instance v7, Lj68;

    const-string v9, "EXCEEDS_PAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lj68;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj68;->i:Lj68;

    const/4 v9, 0x5

    new-array v9, v9, [Lj68;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lj68;->j:[Lj68;

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

.method public static valueOf(Ljava/lang/String;)Lj68;
    .locals 1

    .line 1
    const-class v0, Lj68;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj68;

    return-object p0
.end method

.method public static values()[Lj68;
    .locals 1

    .line 1
    sget-object v0, Lj68;->j:[Lj68;

    invoke-virtual {v0}, [Lj68;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj68;

    return-object v0
.end method
