.class public final enum Lj78$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj78$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lj78$a;

.field public static final enum f:Lj78$a;

.field public static final enum g:Lj78$a;

.field public static final synthetic h:[Lj78$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lj78$a;

    const-string v1, "UTC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj78$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj78$a;->e:Lj78$a;

    .line 2
    new-instance v1, Lj78$a;

    const-string v3, "WALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj78$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj78$a;->f:Lj78$a;

    .line 3
    new-instance v3, Lj78$a;

    const-string v5, "STANDARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj78$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj78$a;->g:Lj78$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lj78$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lj78$a;->h:[Lj78$a;

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

.method public static valueOf(Ljava/lang/String;)Lj78$a;
    .locals 1

    .line 1
    const-class v0, Lj78$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj78$a;

    return-object p0
.end method

.method public static values()[Lj78$a;
    .locals 1

    .line 1
    sget-object v0, Lj78$a;->h:[Lj78$a;

    invoke-virtual {v0}, [Lj78$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj78$a;

    return-object v0
.end method
