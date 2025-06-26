.class public final enum Lxc6$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxc6$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lxc6$c;

.field public static final enum f:Lxc6$c;

.field public static final enum g:Lxc6$c;

.field public static final synthetic h:[Lxc6$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lxc6$c;

    const-string v1, "EXISTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lxc6$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lxc6$c;->e:Lxc6$c;

    .line 2
    new-instance v1, Lxc6$c;

    const-string v4, "UPDATE_TIME"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lxc6$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lxc6$c;->f:Lxc6$c;

    .line 3
    new-instance v4, Lxc6$c;

    const-string v6, "CONDITIONTYPE_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lxc6$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lxc6$c;->g:Lxc6$c;

    const/4 v6, 0x3

    new-array v6, v6, [Lxc6$c;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lxc6$c;->h:[Lxc6$c;

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

.method public static valueOf(Ljava/lang/String;)Lxc6$c;
    .locals 1

    .line 1
    const-class v0, Lxc6$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc6$c;

    return-object p0
.end method

.method public static values()[Lxc6$c;
    .locals 1

    .line 1
    sget-object v0, Lxc6$c;->h:[Lxc6$c;

    invoke-virtual {v0}, [Lxc6$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc6$c;

    return-object v0
.end method
