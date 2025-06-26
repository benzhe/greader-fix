.class public final enum Lrc6$c$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc6$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrc6$c$b;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lrc6$c$b;

.field public static final enum g:Lrc6$c$b;

.field public static final enum h:Lrc6$c$b;

.field public static final synthetic i:[Lrc6$c$b;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lrc6$c$b;

    const-string v1, "SERVER_VALUE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lrc6$c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lrc6$c$b;->f:Lrc6$c$b;

    .line 2
    new-instance v1, Lrc6$c$b;

    const-string v3, "REQUEST_TIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lrc6$c$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrc6$c$b;->g:Lrc6$c$b;

    .line 3
    new-instance v3, Lrc6$c$b;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lrc6$c$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lrc6$c$b;->h:Lrc6$c$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lrc6$c$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lrc6$c$b;->i:[Lrc6$c$b;

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

    .line 2
    iput p3, p0, Lrc6$c$b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrc6$c$b;
    .locals 1

    .line 1
    const-class v0, Lrc6$c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrc6$c$b;

    return-object p0
.end method

.method public static values()[Lrc6$c$b;
    .locals 1

    .line 1
    sget-object v0, Lrc6$c$b;->i:[Lrc6$c$b;

    invoke-virtual {v0}, [Lrc6$c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrc6$c$b;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lrc6$c$b;->h:Lrc6$c$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lrc6$c$b;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
