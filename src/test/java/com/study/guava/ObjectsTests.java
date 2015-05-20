package com.study.guava;

import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import org.junit.Test;

import static com.google.common.base.Preconditions.checkArgument;
import static com.google.common.base.Preconditions.checkState;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-6-4
 * Time: 下午9:20
 * To change this template use File | Settings | File Templates.
 */
public class ObjectsTests {

    @Test
    public void myTest(){
        Engine engine = new Engine();
        Car car = new Car(engine);
        car.setName("Jeep");
        car.setId("09871");
        System.out.println(car.toString());
        /*******************/
        Optional<String> possible = Optional.of("1");
        possible.isPresent(); // returns true
        possible.get(); // returns 5

        Object o = null;
        Preconditions.checkNotNull(0);

        car.drive(120.00);

        /*******************************/
        String[] ss =" foo, ,bar, quux,".split(",");
        for(String s : ss) {
            System.out.println("str:" + s);
        }

        Car car1 = null;
        System.out.println("Objects-equal:" + Objects.equal(car, car1));

        /**************/
        //firstNonNull

        String obj1 = "1";
        String obj2 = "2";
        System.out.println("Objects-firstNonNull:" + Objects.firstNonNull(obj1, obj2));

        System.out.println("Objects-toStringHelper:" + Objects.toStringHelper("com.guava.study.Object.ObjectTests"));

    }

}

class Car {
    private Engine engine;
    private String name;
    private String id;
    private String pet;
    public Car(Engine engine) {
        this.engine = engine;
    }

    public void drive(double speed) {
        checkArgument(speed > 0.0, "speed (%s) must be positive", speed);
        checkState(engine.isRunning(),
                "engine must be running");
    }


    public String toString() {
        return Objects.toStringHelper(this)
                .add("name", name)
                .add("id", id)
                .add("pet", pet)
                .omitNullValues()
                .toString();

    }


    Engine getEngine() {
        return engine;
    }

    void setEngine(Engine engine) {
        this.engine = engine;
    }

    String getName() {
        return name;
    }

    void setName(String name) {
        this.name = name;
    }

    String getId() {
        return id;
    }

    void setId(String id) {
        this.id = id;
    }

    String getPet() {
        return pet;
    }
    void setPet(String pet) {
        this.pet = pet;
    }
}

class Engine{
    public boolean isRunning(){
        return true;
    }
}

