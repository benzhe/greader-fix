.class public final enum Lj67$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj67$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj67$b;",
        ">;",
        "Lj67$a;"
    }
.end annotation


# static fields
.field public static final enum e:Lj67$b;

.field public static final synthetic f:[Lj67$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lj67$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj67$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj67$b;->e:Lj67$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lj67$b;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lj67$b;->f:[Lj67$b;

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

.method public static valueOf(Ljava/lang/String;)Lj67$b;
    .locals 1

    .line 1
    const-class v0, Lj67$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj67$b;

    return-object p0
.end method

.method public static values()[Lj67$b;
    .locals 1

    .line 1
    sget-object v0, Lj67$b;->f:[Lj67$b;

    invoke-virtual {v0}, [Lj67$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj67$b;

    return-object v0
.end method
