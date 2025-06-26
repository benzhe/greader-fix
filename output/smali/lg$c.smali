.class public final enum Llg$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llg$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Llg$c;

.field public static final enum f:Llg$c;

.field public static final enum g:Llg$c;

.field public static final synthetic h:[Llg$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Llg$c;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llg$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llg$c;->e:Llg$c;

    .line 2
    new-instance v1, Llg$c;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Llg$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Llg$c;->f:Llg$c;

    .line 3
    new-instance v3, Llg$c;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Llg$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Llg$c;->g:Llg$c;

    const/4 v5, 0x3

    new-array v5, v5, [Llg$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Llg$c;->h:[Llg$c;

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

.method public static valueOf(Ljava/lang/String;)Llg$c;
    .locals 1

    .line 1
    const-class v0, Llg$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Llg$c;

    return-object p0
.end method

.method public static values()[Llg$c;
    .locals 1

    .line 1
    sget-object v0, Llg$c;->h:[Llg$c;

    invoke-virtual {v0}, [Llg$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llg$c;

    return-object v0
.end method
