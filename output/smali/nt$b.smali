.class public final enum Lnt$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnt$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lnt$b;

.field public static final enum f:Lnt$b;

.field public static final enum g:Lnt$b;

.field public static final synthetic h:[Lnt$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lnt$b;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnt$b;->e:Lnt$b;

    .line 2
    new-instance v1, Lnt$b;

    const-string v3, "DEVICE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnt$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnt$b;->f:Lnt$b;

    .line 3
    new-instance v3, Lnt$b;

    const-string v5, "DEVICE_CHARGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnt$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnt$b;->g:Lnt$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lnt$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lnt$b;->h:[Lnt$b;

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

.method public static valueOf(Ljava/lang/String;)Lnt$b;
    .locals 1

    .line 1
    const-class v0, Lnt$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnt$b;

    return-object p0
.end method

.method public static values()[Lnt$b;
    .locals 1

    .line 1
    sget-object v0, Lnt$b;->h:[Lnt$b;

    invoke-virtual {v0}, [Lnt$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnt$b;

    return-object v0
.end method
