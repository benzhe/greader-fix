.class public final enum Lyc6$h$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc6$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc6$h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lyc6$h$b;

.field public static final enum f:Lyc6$h$b;

.field public static final enum g:Lyc6$h$b;

.field public static final enum h:Lyc6$h$b;

.field public static final synthetic i:[Lyc6$h$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lyc6$h$b;

    const-string v1, "COMPOSITE_FILTER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lyc6$h$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc6$h$b;->e:Lyc6$h$b;

    .line 2
    new-instance v1, Lyc6$h$b;

    const-string v4, "FIELD_FILTER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lyc6$h$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc6$h$b;->f:Lyc6$h$b;

    .line 3
    new-instance v4, Lyc6$h$b;

    const-string v6, "UNARY_FILTER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lyc6$h$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lyc6$h$b;->g:Lyc6$h$b;

    .line 4
    new-instance v6, Lyc6$h$b;

    const-string v8, "FILTERTYPE_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, Lyc6$h$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lyc6$h$b;->h:Lyc6$h$b;

    const/4 v8, 0x4

    new-array v8, v8, [Lyc6$h$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lyc6$h$b;->i:[Lyc6$h$b;

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

.method public static valueOf(Ljava/lang/String;)Lyc6$h$b;
    .locals 1

    .line 1
    const-class v0, Lyc6$h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc6$h$b;

    return-object p0
.end method

.method public static values()[Lyc6$h$b;
    .locals 1

    .line 1
    sget-object v0, Lyc6$h$b;->i:[Lyc6$h$b;

    invoke-virtual {v0}, [Lyc6$h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc6$h$b;

    return-object v0
.end method
