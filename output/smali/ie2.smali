.class public final synthetic Lie2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# static fields
.field public static final a:Lvs2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lie2;

    invoke-direct {v0}, Lie2;-><init>()V

    sput-object v0, Lie2;->a:Lvs2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lhe2;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lhe2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
