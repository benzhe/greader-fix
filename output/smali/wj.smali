.class public final enum Lwj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lwj;

.field public static final enum f:Lwj;

.field public static final enum g:Lwj;

.field public static final enum h:Lwj;

.field public static final enum i:Lwj;

.field public static final synthetic j:[Lwj;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lwj;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwj;->e:Lwj;

    .line 2
    new-instance v1, Lwj;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lwj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwj;->f:Lwj;

    .line 3
    new-instance v3, Lwj;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lwj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lwj;->g:Lwj;

    .line 4
    new-instance v5, Lwj;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lwj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lwj;->h:Lwj;

    .line 5
    new-instance v7, Lwj;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lwj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lwj;->i:Lwj;

    const/4 v9, 0x5

    new-array v9, v9, [Lwj;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lwj;->j:[Lwj;

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

.method public static valueOf(Ljava/lang/String;)Lwj;
    .locals 1

    .line 1
    const-class v0, Lwj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwj;

    return-object p0
.end method

.method public static values()[Lwj;
    .locals 1

    .line 1
    sget-object v0, Lwj;->j:[Lwj;

    invoke-virtual {v0}, [Lwj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwj;

    return-object v0
.end method
