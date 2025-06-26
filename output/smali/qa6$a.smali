.class public final enum Lqa6$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqa6$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lqa6$a;

.field public static final enum f:Lqa6$a;

.field public static final synthetic g:[Lqa6$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lqa6$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqa6$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqa6$a;->e:Lqa6$a;

    .line 2
    new-instance v1, Lqa6$a;

    const-string v3, "BAD_CONFIG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lqa6$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqa6$a;->f:Lqa6$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lqa6$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lqa6$a;->g:[Lqa6$a;

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

.method public static valueOf(Ljava/lang/String;)Lqa6$a;
    .locals 1

    .line 1
    const-class v0, Lqa6$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqa6$a;

    return-object p0
.end method

.method public static values()[Lqa6$a;
    .locals 1

    .line 1
    sget-object v0, Lqa6$a;->g:[Lqa6$a;

    invoke-virtual {v0}, [Lqa6$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqa6$a;

    return-object v0
.end method
