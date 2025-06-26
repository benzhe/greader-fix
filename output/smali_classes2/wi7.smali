.class public final enum Lwi7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwi7$b;,
        Lwi7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwi7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lwi7;

.field public static final synthetic f:[Lwi7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lwi7;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwi7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwi7;->e:Lwi7;

    const/4 v1, 0x1

    new-array v1, v1, [Lwi7;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lwi7;->f:[Lwi7;

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

.method public static valueOf(Ljava/lang/String;)Lwi7;
    .locals 1

    .line 1
    const-class v0, Lwi7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwi7;

    return-object p0
.end method

.method public static values()[Lwi7;
    .locals 1

    .line 1
    sget-object v0, Lwi7;->f:[Lwi7;

    invoke-virtual {v0}, [Lwi7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwi7;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
