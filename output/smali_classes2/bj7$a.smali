.class public final Lbj7$a;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbj7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lbj7$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbj7$a;

    invoke-direct {v0}, Lbj7$a;-><init>()V

    sput-object v0, Lbj7$a;->e:Lbj7$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
