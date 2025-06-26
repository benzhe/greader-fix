.class public final enum Lmi7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmi7;",
        ">;",
        "Lkd7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lmi7;

.field public static final synthetic f:[Lmi7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmi7;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmi7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmi7;->e:Lmi7;

    const/4 v1, 0x1

    new-array v1, v1, [Lmi7;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lmi7;->f:[Lmi7;

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

.method public static valueOf(Ljava/lang/String;)Lmi7;
    .locals 1

    .line 1
    const-class v0, Lmi7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmi7;

    return-object p0
.end method

.method public static values()[Lmi7;
    .locals 1

    .line 1
    sget-object v0, Lmi7;->f:[Lmi7;

    invoke-virtual {v0}, [Lmi7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmi7;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public i(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lpi7;->y(J)Z

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySubscription"

    return-object v0
.end method
