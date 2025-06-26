.class public final synthetic Lkp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks0;


# static fields
.field public static final a:Lks0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkp3;

    invoke-direct {v0}, Lkp3;-><init>()V

    sput-object v0, Lkp3;->a:Lks0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lud3;->W6(Landroid/os/IBinder;)Lvd3;

    move-result-object p1

    return-object p1
.end method
