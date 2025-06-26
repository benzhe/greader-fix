.class public final synthetic Lgo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lao5;


# static fields
.field public static final a:Lgo5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgo5;

    invoke-direct {v0}, Lgo5;-><init>()V

    sput-object v0, Lgo5;->a:Lgo5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lbo5;

    .line 1
    sget-object v0, Lio5;->e:Lio5$a;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lbo5;->f(Z)Lbo5;

    return-void
.end method
