.class public final enum Lkk6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkk6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lkk6;

.field public static final enum f:Lkk6;

.field public static final synthetic g:[Lkk6;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkk6;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkk6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkk6;->e:Lkk6;

    .line 2
    new-instance v1, Lkk6;

    const-string v3, "PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkk6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkk6;->f:Lkk6;

    const/4 v3, 0x2

    new-array v3, v3, [Lkk6;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lkk6;->g:[Lkk6;

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

.method public static valueOf(Ljava/lang/String;)Lkk6;
    .locals 1

    .line 1
    const-class v0, Lkk6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkk6;

    return-object p0
.end method

.method public static values()[Lkk6;
    .locals 1

    .line 1
    sget-object v0, Lkk6;->g:[Lkk6;

    invoke-virtual {v0}, [Lkk6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkk6;

    return-object v0
.end method
