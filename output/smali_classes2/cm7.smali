.class public abstract Lcm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgn7;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm7$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field private transient reflected:Lgn7;

.field private final signature:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcm7$a;->e:Lcm7$a;

    sput-object v0, Lcm7;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcm7;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcm7;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcm7;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcm7;->receiver:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcm7;->owner:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lcm7;->name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcm7;->signature:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lcm7;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0, p1}, Lgn7;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0, p1}, Lgn7;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lgn7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcm7;->reflected:Lgn7;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcm7;->computeReflected()Lgn7;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcm7;->reflected:Lgn7;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lgn7;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lfn7;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcm7;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcm7;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lin7;
    .locals 3

    .line 1
    iget-object v0, p0, Lcm7;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcm7;->isTopLevel:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lsm7;->a:Ltm7;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lnm7;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lnm7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReflected()Lgn7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->compute()Lgn7;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ldl7;

    invoke-direct {v0}, Ldl7;-><init>()V

    throw v0
.end method

.method public getReturnType()Lnn7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->getReturnType()Lnn7;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcm7;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lon7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->getVisibility()Lon7;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcm7;->getReflected()Lgn7;

    move-result-object v0

    invoke-interface {v0}, Lgn7;->isSuspend()Z

    move-result v0

    return v0
.end method
