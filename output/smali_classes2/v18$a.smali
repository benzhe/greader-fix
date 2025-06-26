.class public final enum Lv18$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv18$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lv18$a;

.field public static final enum f:Lv18$a;

.field public static final enum g:Lv18$a;

.field public static final synthetic h:[Lv18$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lv18$a;

    const-string v1, "DETECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv18$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv18$a;->e:Lv18$a;

    .line 2
    new-instance v1, Lv18$a;

    const-string v3, "FOUND_IT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv18$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv18$a;->f:Lv18$a;

    .line 3
    new-instance v3, Lv18$a;

    const-string v5, "NOT_ME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv18$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv18$a;->g:Lv18$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lv18$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lv18$a;->h:[Lv18$a;

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

.method public static valueOf(Ljava/lang/String;)Lv18$a;
    .locals 1

    .line 1
    const-class v0, Lv18$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv18$a;

    return-object p0
.end method

.method public static final values()[Lv18$a;
    .locals 1

    .line 1
    sget-object v0, Lv18$a;->h:[Lv18$a;

    invoke-virtual {v0}, [Lv18$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv18$a;

    return-object v0
.end method
