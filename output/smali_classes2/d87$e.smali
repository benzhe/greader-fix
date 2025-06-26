.class public final enum Ld87$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld87$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ld87$e;

.field public static final enum f:Ld87$e;

.field public static final synthetic g:[Ld87$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ld87$e;

    const-string v1, "HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld87$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld87$e;->e:Ld87$e;

    new-instance v1, Ld87$e;

    const-string v3, "BODY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ld87$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld87$e;->f:Ld87$e;

    const/4 v3, 0x2

    new-array v3, v3, [Ld87$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Ld87$e;->g:[Ld87$e;

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

.method public static valueOf(Ljava/lang/String;)Ld87$e;
    .locals 1

    .line 1
    const-class v0, Ld87$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld87$e;

    return-object p0
.end method

.method public static values()[Ld87$e;
    .locals 1

    .line 1
    sget-object v0, Ld87$e;->g:[Ld87$e;

    invoke-virtual {v0}, [Ld87$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld87$e;

    return-object v0
.end method
