.class public final enum Ltw5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltw5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ltw5;

.field public static final enum f:Ltw5;

.field public static final enum g:Ltw5;

.field public static final enum h:Ltw5;

.field public static final enum i:Ltw5;

.field public static final synthetic j:[Ltw5;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ltw5;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltw5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltw5;->e:Ltw5;

    .line 2
    new-instance v1, Ltw5;

    const-string v3, "Starting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltw5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltw5;->f:Ltw5;

    .line 3
    new-instance v3, Ltw5;

    const-string v5, "Open"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltw5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltw5;->g:Ltw5;

    .line 4
    new-instance v5, Ltw5;

    const-string v7, "Error"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ltw5;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ltw5;->h:Ltw5;

    .line 5
    new-instance v7, Ltw5;

    const-string v9, "Backoff"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ltw5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ltw5;->i:Ltw5;

    const/4 v9, 0x5

    new-array v9, v9, [Ltw5;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Ltw5;->j:[Ltw5;

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

.method public static valueOf(Ljava/lang/String;)Ltw5;
    .locals 1

    .line 1
    const-class v0, Ltw5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltw5;

    return-object p0
.end method

.method public static values()[Ltw5;
    .locals 1

    .line 1
    sget-object v0, Ltw5;->j:[Ltw5;

    invoke-virtual {v0}, [Ltw5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltw5;

    return-object v0
.end method
