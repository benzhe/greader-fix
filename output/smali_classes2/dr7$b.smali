.class public final enum Ldr7$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldr7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldr7$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ldr7$b;

.field public static final enum f:Ldr7$b;

.field public static final enum g:Ldr7$b;

.field public static final enum h:Ldr7$b;

.field public static final enum i:Ldr7$b;

.field public static final synthetic j:[Ldr7$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ldr7$b;

    new-instance v1, Ldr7$b;

    const-string v2, "CPU_ACQUIRED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ldr7$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldr7$b;->e:Ldr7$b;

    aput-object v1, v0, v3

    new-instance v1, Ldr7$b;

    const-string v2, "BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ldr7$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldr7$b;->f:Ldr7$b;

    aput-object v1, v0, v3

    new-instance v1, Ldr7$b;

    const-string v2, "PARKING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ldr7$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldr7$b;->g:Ldr7$b;

    aput-object v1, v0, v3

    new-instance v1, Ldr7$b;

    const-string v2, "DORMANT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ldr7$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldr7$b;->h:Ldr7$b;

    aput-object v1, v0, v3

    new-instance v1, Ldr7$b;

    const-string v2, "TERMINATED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ldr7$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldr7$b;->i:Ldr7$b;

    aput-object v1, v0, v3

    sput-object v0, Ldr7$b;->j:[Ldr7$b;

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

.method public static valueOf(Ljava/lang/String;)Ldr7$b;
    .locals 1

    const-class v0, Ldr7$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldr7$b;

    return-object p0
.end method

.method public static values()[Ldr7$b;
    .locals 1

    sget-object v0, Ldr7$b;->j:[Ldr7$b;

    invoke-virtual {v0}, [Ldr7$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldr7$b;

    return-object v0
.end method
