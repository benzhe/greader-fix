.class public final enum Lpr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpr$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lpr$a;

.field public static final enum f:Lpr$a;

.field public static final synthetic g:[Lpr$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lpr$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lpr$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lpr$a;->e:Lpr$a;

    .line 2
    new-instance v1, Lpr$a;

    const-string v3, "ANDROID_FIREBASE"

    const/4 v4, 0x1

    const/16 v5, 0x17

    invoke-direct {v1, v3, v4, v5}, Lpr$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lpr$a;->f:Lpr$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lpr$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lpr$a;->g:[Lpr$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpr$a;
    .locals 1

    .line 1
    const-class v0, Lpr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpr$a;

    return-object p0
.end method

.method public static values()[Lpr$a;
    .locals 1

    .line 1
    sget-object v0, Lpr$a;->g:[Lpr$a;

    invoke-virtual {v0}, [Lpr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpr$a;

    return-object v0
.end method
