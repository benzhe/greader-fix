.class public final enum Lwl6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwl6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lwl6;

.field public static final enum f:Lwl6;

.field public static final enum g:Lwl6;

.field public static final enum h:Lwl6;

.field public static i:[Lwl6;

.field public static final synthetic j:[Lwl6;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lwl6;

    const-string v1, "INTERNET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwl6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwl6;->e:Lwl6;

    .line 2
    new-instance v1, Lwl6;

    const-string v3, "TELEPHONY_MANAGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lwl6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwl6;->f:Lwl6;

    .line 3
    new-instance v3, Lwl6;

    const-string v5, "TIMEZONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lwl6;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lwl6;->g:Lwl6;

    .line 4
    new-instance v5, Lwl6;

    const-string v7, "LOCALE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lwl6;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lwl6;->h:Lwl6;

    const/4 v7, 0x4

    new-array v9, v7, [Lwl6;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    .line 5
    sput-object v9, Lwl6;->j:[Lwl6;

    new-array v7, v7, [Lwl6;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lwl6;->i:[Lwl6;

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

.method public static valueOf(Ljava/lang/String;)Lwl6;
    .locals 1

    .line 1
    const-class v0, Lwl6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwl6;

    return-object p0
.end method

.method public static values()[Lwl6;
    .locals 1

    .line 1
    sget-object v0, Lwl6;->j:[Lwl6;

    invoke-virtual {v0}, [Lwl6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwl6;

    return-object v0
.end method
