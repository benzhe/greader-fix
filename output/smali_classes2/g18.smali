.class public final enum Lg18;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg18;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lg18;

.field public static final enum f:Lg18;

.field public static final enum g:Lg18;

.field public static final enum h:Lg18;

.field public static final synthetic i:[Lg18;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lg18;

    new-instance v1, Lg18;

    const-string v2, "DEBUG"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg18;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg18;->e:Lg18;

    aput-object v1, v0, v3

    new-instance v1, Lg18;

    const-string v2, "INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg18;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg18;->f:Lg18;

    aput-object v1, v0, v3

    new-instance v1, Lg18;

    const-string v2, "ERROR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg18;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg18;->g:Lg18;

    aput-object v1, v0, v3

    new-instance v1, Lg18;

    const-string v2, "NONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg18;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg18;->h:Lg18;

    aput-object v1, v0, v3

    sput-object v0, Lg18;->i:[Lg18;

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

.method public static valueOf(Ljava/lang/String;)Lg18;
    .locals 1

    const-class v0, Lg18;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg18;

    return-object p0
.end method

.method public static values()[Lg18;
    .locals 1

    sget-object v0, Lg18;->i:[Lg18;

    invoke-virtual {v0}, [Lg18;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg18;

    return-object v0
.end method
